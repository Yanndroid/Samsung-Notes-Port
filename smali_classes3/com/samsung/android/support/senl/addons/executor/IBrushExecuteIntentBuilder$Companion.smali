.class public final Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;",
        "",
        "()V",
        "ARG_BRUSH_INPUT_PAINTING_DOC_PATH",
        "",
        "ARG_BRUSH_INPUT_THUMBNAIL_PATH",
        "ARG_BRUSH_OUTPUT_PAINTING_DOC_PATH",
        "ARG_BRUSH_OUTPUT_THUMBNAIL_PATH",
        "ARG_INTERNAL_PATH",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;

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


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method