import { describe, expect, test } from '@jest/globals'
import { ZacActions } from "../src/zac/action";

test('JSON.stringify', () => {
    expect(JSON.stringify(ZacActions.new({ actions: [] }))).toEqual(
        JSON.stringify({
            converter: 'z:1:Actions',
            actions: []
        })
    )
});