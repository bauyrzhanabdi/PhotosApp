import Foundation

struct AlbumsModel {
    var image: String
    var title: String
    var quantity: String
}

extension AlbumsModel {
    static let models = [
        [AlbumsModel(image: "steve", title: "Недавние", quantity: "100"),
         AlbumsModel(image: "steve", title: "Whatsapp", quantity: "50"),
         AlbumsModel(image: "steve", title: "Избранное", quantity: "30"),
         AlbumsModel(image: "steve", title: "Media", quantity: "30"),
         AlbumsModel(image: "steve", title: "Telegram", quantity: "30"),
         AlbumsModel(image: "steve", title: "Chrome", quantity: "30"),
         AlbumsModel(image: "steve", title: "Firefox", quantity: "30"),
         AlbumsModel(image: "steve", title: "Family", quantity: "30")],
        [AlbumsModel(image: "wozniak", title: "Недавние", quantity: "100"),
         AlbumsModel(image: "steve", title: "Whatsapp", quantity: "50"),
         AlbumsModel(image: "steve", title: "Избранное", quantity: "30"),
         AlbumsModel(image: "steve", title: "Media", quantity: "30"),
         AlbumsModel(image: "steve", title: "Telegram", quantity: "30"),
         AlbumsModel(image: "steve", title: "Chrome", quantity: "30"),
         AlbumsModel(image: "steve", title: "Firefox", quantity: "30"),
         AlbumsModel(image: "steve", title: "Family", quantity: "30")],
        [AlbumsModel(image: "video", title: "Видео", quantity: "100"),
         AlbumsModel(image: "person.crop.rectangle", title: "Селфи", quantity: "50"),
         AlbumsModel(image: "livephoto", title: "Фото Live Photos", quantity: "30"),
         AlbumsModel(image: "cube", title: "Портреты", quantity: "30"),
         AlbumsModel(image: "slowmo", title: "Замедленно", quantity: "30"),
         AlbumsModel(image: "camera.viewfinder", title: "Снимки экрана", quantity: "30"),
         AlbumsModel(image: "record.circle", title: "Записи экрана", quantity: "30")],
        [AlbumsModel(image: "square.and.arrow.up", title: "Импортированные", quantity: "100"),
         AlbumsModel(image: "square.on.square", title: "Дубликаты", quantity: "50"),
         AlbumsModel(image: "eye.slash", title: "Скрытые", quantity: "30"),
         AlbumsModel(image: "trash", title: "Недавно удаленные", quantity: "30")]
    ]
}
