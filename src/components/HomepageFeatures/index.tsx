import React from 'react';
import type * as ReactNamespace from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import styles from './styles.module.css';

type Feature = {
  title: string;
  icon: string; // simple emoji icon
  description: React.ReactNode;
  cta: { label: string; to: string };
};

const FEATURES: Feature[] = [
  {
    title: 'Core',
    icon: '🧱',
    description: (
      <>
        JUnit 5 base classes, Spring context helpers, and Allure reporting baked in. Build fast, readable tests with sensible defaults.
      </>
    ),
    cta: { label: 'Explore Core', to: 'docs/core' },
  },
  {
    title: 'REST',
    icon: '🔗',
    description: (
      <>
        RestAssured utilities and HTTP test scaffolding. Consistent request/response helpers and better assertions.
      </>
    ),
    cta: { label: 'Explore REST', to: 'docs/rest' },
  },
  {
    title: 'WebUI',
    icon: '🖥️',
    description: (
      <>
        Selenide-powered page objects with a fluent style. Stable selectors, retries, and concise actions for modern UIs.
      </>
    ),
    cta: { label: 'Explore WebUI', to: 'docs/webui' },
  },
];

function FeatureCard({ title, icon, description, cta }: Feature) {
  return (
    <div className={clsx('col col--4')}>
      <div className="card">
        <div className="card__header" style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
          <span style={{ fontSize: '2rem' }} aria-hidden>
            {icon}
          </span>
          <h3 style={{ margin: 0 }}>{title}</h3>
        </div>
        <div className="card__body">
          <p>{description}</p>
        </div>
        <div className="card__footer">
          <Link className="button button--primary button--sm" to={cta.to}>
            {cta.label}
          </Link>
        </div>
      </div>
    </div>
  );
}
export default function HomepageFeatures(): ReactNamespace.JSX.Element {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FEATURES.map((props) => (
            <FeatureCard key={props.title} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
