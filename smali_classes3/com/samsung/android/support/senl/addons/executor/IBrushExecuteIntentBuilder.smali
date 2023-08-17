.class public interface abstract Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H&J\u0012\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\u0008\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\n\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\u000c\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;",
        "Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;",
        "setCloseCommand",
        "save",
        "",
        "setInputPaintingDocPath",
        "inputPaintingDocPath",
        "",
        "setInputThumbnailPath",
        "inputThumbnailPath",
        "setInternalPath",
        "path",
        "setOutputPaintingDocPath",
        "outputPaintingDocPath",
        "setOutputThumbnailPath",
        "outputThumbnailPath",
        "Companion",
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


# static fields
.field public static final ARG_BRUSH_INPUT_PAINTING_DOC_PATH:Ljava/lang/String; = "brush_input_painting_doc_path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARG_BRUSH_INPUT_THUMBNAIL_PATH:Ljava/lang/String; = "brush_input_thumbnail_path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARG_BRUSH_OUTPUT_PAINTING_DOC_PATH:Ljava/lang/String; = "brush_output_painting_doc_path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARG_BRUSH_OUTPUT_THUMBNAIL_PATH:Ljava/lang/String; = "brush_output_thumbnail_path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARG_INTERNAL_PATH:Ljava/lang/String; = "internal_path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;->Companion:Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;

    return-void
.end method


# virtual methods
.method public abstract setCloseCommand(Z)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setInputPaintingDocPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setInputThumbnailPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setInternalPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setOutputPaintingDocPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setOutputThumbnailPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
