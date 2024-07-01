import React from 'react';
import '../design/Features.css';

export default function Features() {
  return (
    <section id="features" className="features">
            <h2>Fonctionnalités</h2>
            <div className="feature-container">
                <div className="feature">
                    <h3>99.9% Uptime</h3>
                    <p>Garantie de disponibilité maximale pour votre site.</p>
                </div>
                <div className="feature">
                    <h3>Support 24/7</h3>
                    <p>Notre équipe est là pour vous aider à tout moment.</p>
                </div>
                <div className="feature">
                    <h3>Sécurité Renforcée</h3>
                    <p>Protégez votre site contre les attaques avec nos solutions de sécurité avancées.</p>
                </div>
            </div>
        </section>
  );
}
