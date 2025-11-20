"use client";

import React from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, MapPin, TrendingUp, Users, Sparkles, Shield } from "lucide-react";
import { Place } from "@/types";
import {
  calculateSafetyMetrics,
  getTrendIndicator,
} from "@/utils/safetyCalculations";
import SafetyScoreBar from "./SafetyScoreBar";
import CrimeInfoSection from "./CrimeInfoSection";
import UserReviewSection from "./UserReviewSection";
import InfrastructureSection from "./InfrastructureSection";

interface PlaceDetailPanelProps {
  place: Place | null;
  onClose: () => void;
}

export default function PlaceDetailPanel({
  place,
  onClose,
}: PlaceDetailPanelProps) {
  if (!place) return null;

  const metrics = calculateSafetyMetrics(place);
  const trendInfo = getTrendIndicator(place.trend);

  const getSafetyTierStyles = () => {
    switch (metrics.safetyTier) {
      case "Safe":
        return "from-pastel-mint/20 to-pastel-cyan/20 text-pastel-mint border-pastel-mint/30";
      case "Moderate":
        return "from-pastel-yellow/20 to-pastel-cyan/20 text-pastel-yellow border-pastel-yellow/30";
      case "Unsafe":
        return "from-pastel-pink/20 to-pastel-yellow/20 text-pastel-pink border-pastel-pink/30";
    }
  };

  return (
    <AnimatePresence>
      <motion.div
        initial={{ x: "100%" }}
        animate={{ x: 0 }}
        exit={{ x: "100%" }}
        transition={{ type: "spring", damping: 30, stiffness: 300 }}
        className="fixed right-0 top-0 h-full w-full sm:w-[90%] md:w-[480px] lg:w-[520px] bg-dark-800 shadow-2xl z-[2000] overflow-y-auto rounded-l-4xl border-l border-white/10">
        {/* Header with gradient */}
        <div
          className={`relative bg-gradient-to-br ${getSafetyTierStyles()} p-6 pb-8 border-b border-white/10`}>
          <button
            onClick={onClose}
            className="absolute top-4 right-4 p-2 rounded-full bg-dark-900/40 hover:bg-dark-900/60 transition-colors backdrop-blur-sm border border-white/10">
            <X className="w-5 h-5" />
          </button>

          <div className="flex items-start space-x-3 mb-4">
            <div className="p-3 bg-dark-900/40 rounded-3xl backdrop-blur-sm border border-white/10">
              <MapPin className="w-6 h-6 text-white" />
            </div>
            <div className="flex-1">
              <h2 className="text-2xl font-bold mb-1 text-white">
                {place.name}
              </h2>
              <p className="text-sm text-zinc-400">
                {place.lat.toFixed(4)}, {place.lng.toFixed(4)}
              </p>
            </div>
          </div>

          {/* Safety Score Badge */}
          <div className="bg-dark-900/40 backdrop-blur-sm rounded-3xl p-4 border border-white/10">
            <div className="flex items-center justify-between mb-2">
              <span className="text-sm font-medium text-zinc-400">
                Overall Safety Score
              </span>
              <span className="text-3xl font-bold text-white">
                {metrics.finalSafetyScore}
              </span>
            </div>
            <div className="flex items-center justify-between text-sm">
              <span className="text-zinc-400">
                Safety Tier: {metrics.safetyTier}
              </span>
              <span className="flex items-center space-x-1 text-zinc-400">
                <span>Elo: {metrics.placeElo}</span>
              </span>
            </div>
          </div>
        </div>

        {/* Content */}
        <div className="p-6 space-y-6">
          {/* Trend Indicator */}
          <div className="flex items-center justify-between p-4 bg-dark-700 rounded-3xl border border-white/5">
            <div className="flex items-center space-x-2">
              <TrendingUp className="w-5 h-5 text-pastel-cyan" />
              <span className="font-medium text-white">Safety Trend</span>
            </div>
            <span className={`font-semibold ${trendInfo.color}`}>
              {trendInfo.icon} {trendInfo.text}
            </span>
          </div>

          {/* Score Breakdown */}
          <section>
            <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center space-x-2">
              <Shield className="w-5 h-5" />
              <span>Score Breakdown</span>
            </h3>
            <div className="space-y-3">
              <SafetyScoreBar
                score={metrics.safetyScore}
                label="Safety Score"
              />
              <SafetyScoreBar
                score={metrics.popularityScore}
                label="Popularity Score"
              />
              <SafetyScoreBar
                score={metrics.experienceScore}
                label="Experience Score"
              />
              <SafetyScoreBar score={metrics.trendScore} label="Trend Score" />
            </div>
          </section>

          {/* Crime Information */}
          <section>
            <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center space-x-2">
              <Shield className="w-5 h-5" />
              <span>Crime Statistics</span>
            </h3>
            <CrimeInfoSection crime={place.crime} />
          </section>

          {/* Infrastructure */}
          <section>
            <h3 className="text-lg font-bold text-white mb-4 flex items-center space-x-2">
              <Sparkles className="w-5 h-5 text-pastel-mint" />
              <span>Safety Infrastructure</span>
            </h3>
            <InfrastructureSection infra={place.infra} />
          </section>

          {/* User Reviews */}
          <section>
            <h3 className="text-lg font-bold text-white mb-4 flex items-center space-x-2">
              <Users className="w-5 h-5 text-pastel-pink" />
              <span>User Reviews</span>
            </h3>
            <UserReviewSection reviews={place.reviews || []} />
          </section>

          {/* Elo Formula Info */}
          <section className="p-4 bg-gradient-to-br from-dark-700 to-dark-800 rounded-3xl border border-white/10">
            <h4 className="text-sm font-semibold text-white mb-2">
              How We Calculate Safety
            </h4>
            <div className="text-xs text-zinc-400 space-y-1 font-mono">
              <p>AttributeScore = 0.40×Safety + 0.30×Popularity</p>
              <p className="ml-16">+ 0.20×Experience + 0.10×Trend</p>
              <p className="mt-2">PlaceElo = 1000 + 1400 × AttributeScore</p>
              <p>FinalScore = AttributeScore × 100</p>
            </div>
            <div className="mt-3 pt-3 border-t border-white/10">
              <p className="text-xs text-zinc-300">
                <span className="font-semibold">Your Score:</span>{" "}
                {metrics.attributeScore.toFixed(3)}
              </p>
            </div>
          </section>
        </div>
      </motion.div>

      {/* Backdrop */}
      <motion.div
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        exit={{ opacity: 0 }}
        onClick={onClose}
        className="fixed inset-0 bg-black/60 backdrop-blur-md z-[1900]"
      />
    </AnimatePresence>
  );
}
