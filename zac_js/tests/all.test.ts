import { describe, expect, test } from '@jest/globals'
import { Container, SizedBox, nativeTypes, ZacBuilder, MainAxisAlignment, Alignment } from "../dist/index";

test('JSON.stringify', () => {
    // const x: ZacBuilder<nativeTypes.Widget> = Container.new();
    // const x22: ZacBuilder<nativeTypes.Widget> = SizedBox.new();
    // const x2: ZacBuilder<nativeTypes.Container> = Container.new();
    // const x3: ZacBuilder<nativeTypes.Container> = SizedBox.new();
    // const x4: ZacBuilder<nativeTypes.Container> = MainAxisAlignment.spaceEvenly();

    expect(JSON.stringify(Container.new({
        alignment: Alignment.bottomCenter(),
    }))).toEqual(
        JSON.stringify({
            builder: 'f:1:Container',
            alignment: {
                builder: 'f:1:Alignment.bottomCenter'
            }
        })
    )
});