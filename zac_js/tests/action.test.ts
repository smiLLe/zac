import { describe, expect, test } from '@jest/globals'
import { FlutterColor, FlutterContainer, ZacActions } from "../src/generated";

test('JSON.stringify', () => {
    expect(JSON.stringify(ZacActions.new({ actions: [] }))).toEqual(
        JSON.stringify({
            converter: 'z:1:Actions',
            actions: []
        })
    )

    expect(JSON.stringify(FlutterContainer.new({
        // color: FlutterColor.fromARGB({
        //     a: 1, b: 2, g: 3, r: 5
        // }),
        child: FlutterContainer.new({})
    }))).toEqual(JSON.stringify({
        converter: 'f:1:Container',
        child: {
            converter: 'f:1:Container'
        }
    }))
});