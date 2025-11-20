import React from "react";
import { Shield, AlertTriangle, AlertCircle } from "lucide-react";
import { CrimeData } from "@/types";

interface CrimeInfoSectionProps {
  crime: CrimeData;
}

export default function CrimeInfoSection({ crime }: CrimeInfoSectionProps) {
  const crimeTypes = [
    {
      name: "Violent Crime",
      value: crime.violent,
      icon: AlertCircle,
      description: "Assault, robbery with violence",
    },
    {
      name: "Property Crime",
      value: crime.property,
      icon: AlertTriangle,
      description: "Theft, burglary, pickpocketing",
    },
    {
      name: "Accidents",
      value: crime.accident,
      icon: Shield,
      description: "Traffic incidents, public accidents",
    },
  ];

  const getCrimeLevel = (value: number) => {
    if (value < 20) return { text: "Low", color: "text-pastel-mint bg-pastel-mint/10 border-pastel-mint/20" };
    if (value < 50)
      return { text: "Moderate", color: "text-pastel-yellow bg-pastel-yellow/10 border-pastel-yellow/20" };
    return { text: "High", color: "text-pastel-pink bg-pastel-pink/10 border-pastel-pink/20" };
  };

  return (
    <div className="space-y-3">
      {crimeTypes.map((type) => {
        const level = getCrimeLevel(type.value);
        const Icon = type.icon;

        return (
          <div
            key={type.name}
            className="flex items-start space-x-3 p-3 rounded-3xl bg-dark-700 border border-white/5 hover:border-white/10 transition-all">
            <div className="flex-shrink-0">
              <div className={`p-2 rounded-full ${level.color} border`}>
                <Icon className="w-5 h-5" />
              </div>
            </div>
            <div className="flex-1 min-w-0">
              <div className="flex items-center justify-between mb-1">
                <h4 className="text-sm font-semibold text-white">
                  {type.name}
                </h4>
                <span
                  className={`text-xs font-medium px-2 py-1 rounded-full ${level.color} border`}>
                  {level.text}
                </span>
              </div>
              <p className="text-xs text-zinc-400">{type.description}</p>
              <div className="mt-2 h-1.5 bg-dark-900 rounded-full overflow-hidden border border-white/5">
                <div
                  className={`h-full ${
                    type.value < 20
                      ? "bg-pastel-mint shadow-lg shadow-pastel-mint/20"
                      : type.value < 50
                      ? "bg-pastel-yellow shadow-lg shadow-pastel-yellow/20"
                      : "bg-pastel-pink shadow-lg shadow-pastel-pink/20"
                  } transition-all duration-300`}
                  style={{ width: `${type.value}%` }}
                />
              </div>
            </div>
          </div>
        );
      })}
    </div>
  );
}
