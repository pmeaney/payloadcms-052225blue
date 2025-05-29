import * as migration_20250523_184732 from './20250523_184732';
import * as migration_20250528_203707 from './20250528_203707';

export const migrations = [
  {
    up: migration_20250523_184732.up,
    down: migration_20250523_184732.down,
    name: '20250523_184732',
  },
  {
    up: migration_20250528_203707.up,
    down: migration_20250528_203707.down,
    name: '20250528_203707'
  },
];
