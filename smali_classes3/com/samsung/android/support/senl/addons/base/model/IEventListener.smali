.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/IEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;
.implements Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLEListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/IEventListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLEListener;",
        "onDispatchEvent",
        "",
        "eventId",
        "",
        "onFinishDocumentByUser",
        "save",
        "",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onDispatchEvent(I)V
.end method

.method public abstract onFinishDocumentByUser(Z)V
.end method
