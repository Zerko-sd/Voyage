import React from "react";
import { Camera, Lightbulb, Shield as ShieldIcon } from "lucide-react";
import { InfrastructureData } from "@/types";
import SafetyScoreBar from "./SafetyScoreBar";

interface InfrastructureSectionProps {
  infra: InfrastructureData;
}

export default function InfrastructureSection({
  infra,
}: InfrastructureSectionProps) {
  const infraItems = [
    {
      name: "CCTV Coverage",
      value: infra.cctv,
      icon: Camera,
      color: "text-pastel-cyan",
      bgColor: "bg-pastel-cyan/10 border-pastel-cyan/20",
    },
    {
      name: "Street Lighting",
      value: infra.lighting,
      icon: Lightbulb,
      color: "text-pastel-yellow",
      bgColor: "bg-pastel-yellow/10 border-pastel-yellow/20",
    },
    {
      name: "Police Density",
      value: infra.policeDensity,
      icon: ShieldIcon,
      color: "text-pastel-pink",
      bgColor: "bg-pastel-pink/10 border-pastel-pink/20",
    },
  ];

  return (
    <div className="space-y-4">
      {infraItems.map((item) => {
        const Icon = item.icon;
        return (
          <div key={item.name} className="flex items-start space-x-3">
            <div className={`p-2 rounded-full ${item.bgColor} flex-shrink-0 border`}>
              <Icon className={`w-5 h-5 ${item.color}`} />
            </div>
            <div className="flex-1">
              <SafetyScoreBar score={item.value} label={item.name} />
            </div>
          </div>
        );
      })}
    </div>
  );
}
