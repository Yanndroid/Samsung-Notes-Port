.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/ISDocSaveModel$OnProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnProcessListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/ISDocSaveModel$OnProcessListener;",
        "onDocumentLoaded",
        "",
        "onStartSave",
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
.method public abstract onDocumentLoaded()V
.end method

.method public abstract onStartSave()V
.end method
