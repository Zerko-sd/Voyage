import React from "react";
import { Star, Shield, Trash2, Radio } from "lucide-react";
import { Review } from "@/types";

interface UserReviewSectionProps {
  reviews: Review[];
}

export default function UserReviewSection({ reviews }: UserReviewSectionProps) {
  const formatDate = (timestamp: string) => {
    const date = new Date(timestamp);
    return date.toLocaleDateString("en-US", {
      month: "short",
      day: "numeric",
      year: "numeric",
    });
  };

  const renderStars = (rating: number) => {
    return (
      <div className="flex space-x-0.5">
        {[1, 2, 3, 4, 5].map((star) => (
          <Star
            key={star}
            className={`w-3 h-3 ${
              star <= rating
                ? "fill-pastel-yellow text-pastel-yellow"
                : "text-zinc-600"
            }`}
          />
        ))}
      </div>
    );
  };

  if (!reviews || reviews.length === 0) {
    return (
      <div className="text-center py-8 text-zinc-400">
        <p className="text-sm">No reviews yet. Be the first to review!</p>
      </div>
    );
  }

  return (
    <div className="space-y-4">
      {reviews.map((review) => (
        <div
          key={review.id}
          className="p-4 bg-dark-700 rounded-3xl border border-white/5 hover:border-white/10 transition-all">
          {/* Header */}
          <div className="flex items-start justify-between mb-3">
            <div>
              <h4 className="font-semibold text-white">{review.author}</h4>
              <p className="text-xs text-zinc-400 mt-0.5">
                {formatDate(review.timestamp)}
              </p>
            </div>
            <div className="flex items-center space-x-1">
              {renderStars(review.rating)}
            </div>
          </div>

          {/* Rating Chips */}
          <div className="flex flex-wrap gap-2 mb-3">
            <div className="flex items-center space-x-1 px-2 py-1 bg-pastel-cyan/10 rounded-full border border-pastel-cyan/20">
              <Shield className="w-3 h-3 text-pastel-cyan" />
              <span className="text-xs font-medium text-pastel-cyan">
                Safety {review.safetyRating}/5
              </span>
            </div>
            <div className="flex items-center space-x-1 px-2 py-1 bg-pastel-mint/10 rounded-full border border-pastel-mint/20">
              <Trash2 className="w-3 h-3 text-pastel-mint" />
              <span className="text-xs font-medium text-pastel-mint">
                Clean {review.cleanlinessRating}/5
              </span>
            </div>
            <div className="flex items-center space-x-1 px-2 py-1 bg-pastel-pink/10 rounded-full border border-pastel-pink/20">
              <Radio className="w-3 h-3 text-pastel-pink" />
              <span className="text-xs font-medium text-pastel-pink">
                Response {review.policeResponseRating}/5
              </span>
            </div>
          </div>

          {/* Comment */}
          <p className="text-sm text-zinc-300 mb-3 leading-relaxed">
            {review.comment}
          </p>

          {/* Tags */}
          {review.tags && review.tags.length > 0 && (
            <div className="flex flex-wrap gap-1.5">
              {review.tags.map((tag, index) => (
                <span
                  key={index}
                  className="px-2 py-1 text-xs font-medium bg-dark-900/40 text-zinc-300 rounded-full border border-white/10">
                  #{tag}
                </span>
              ))}
            </div>
          )}
        </div>
      ))}
    </div>
  );
}
