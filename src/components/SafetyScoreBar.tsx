import React from "react";
import { getSafetyGradient } from "@/utils/safetyCalculations";

interface SafetyScoreBarProps {
  score: number;
  label: string;
  showValue?: boolean;
}

export default function SafetyScoreBar({
  score,
  label,
  showValue = true,
}: SafetyScoreBarProps) {
  const getScoreColor = (score: number) => {
    if (score >= 70) return "from-pastel-mint to-pastel-cyan";
    if (score >= 40) return "from-pastel-yellow to-pastel-cyan";
    return "from-pastel-pink to-pastel-yellow";
  };

  const getScoreGlow = (score: number) => {
    if (score >= 70) return "shadow-pastel-mint/30";
    if (score >= 40) return "shadow-pastel-yellow/30";
    return "shadow-pastel-pink/30";
  };

  return (
    <div className="space-y-2">
      <div className="flex justify-between items-center">
        <span className="text-sm font-medium text-zinc-400">{label}</span>
        {showValue && (
          <span className="text-sm font-bold text-white">{score}/100</span>
        )}
      </div>
      <div className="relative h-3 bg-dark-700 rounded-full overflow-hidden border border-white/5">
        <div
          className={`h-full bg-gradient-to-r ${getScoreColor(
            score
          )} rounded-full transition-all duration-500 ease-out shadow-lg ${getScoreGlow(
            score
          )}`}
          style={{ width: `${score}%` }}
        />
      </div>
    </div>
  );
}
