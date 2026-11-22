// Точка входу для хостингів із Node.js Selector / Passenger (cPanel, DirectAdmin).
// Сервер написано на ES-модулях (src/server.mjs), тому підключаємо його динамічним імпортом —
// так він запускається на будь-якій версії Node.js 18+ і під Passenger.
import('./src/server.mjs').catch(err => { console.error(err); process.exit(1); });
