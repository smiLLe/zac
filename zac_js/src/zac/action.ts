abstract class ZacAction extends ZacConverter { }
class ZacActions extends ZacConverter {
    static new(data: {
        actions: Array<ZacAction>
    }) {
        return new ZacActions({ converter: 'z:1:Actions', ...data })
    }
}