_oldFatigue = getFatigue player;
_t0 = time;
while {true} do {
    sleep 1;
    hint format ["%1", (getFatigue player - _oldFatigue) / (time - _t0)];
    _oldFatigue = getFatigue player;
    _t0 = time;
};