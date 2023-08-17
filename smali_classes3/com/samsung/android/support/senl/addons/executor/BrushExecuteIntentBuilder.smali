.class public final Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;
.super Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 \u001f2\u00020\u00012\u00020\u0002:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J\u0012\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0017\u001a\u00020\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0019\u001a\u00020\u00022\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u001b\u001a\u00020\u00022\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u001d\u001a\u00020\u00022\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;",
        "Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;",
        "Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;",
        "()V",
        "mCloseAfterSaveRequested",
        "",
        "mCloseRequested",
        "mInputPaintingDocPath",
        "",
        "mInputThumbnailPath",
        "mInternalPath",
        "mOutputPaintingDocPath",
        "mOutputThumbnailPath",
        "build",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "setCloseCommand",
        "save",
        "setExternalIntent",
        "intent",
        "setInputPaintingDocPath",
        "inputPaintingDocPath",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTERNAL_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.notes.addons"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STRING_BRUSH_CLASS:Ljava/lang/String; = "com.samsung.android.app.notes.tools.BrushActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCloseAfterSaveRequested:Z

.field private mCloseRequested:Z

.field private mInputPaintingDocPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInputThumbnailPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInternalPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOutputPaintingDocPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOutputThumbnailPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->Companion:Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder$Companion;

    const-string v0, "BrushExecuteIntentBuilder"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;-><init>()V

    return-void
.end method

.method private final setExternalIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setExternalIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.addons"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p1, "setExternalIntent, external addon is not installed!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "market://details?id=com.samsung.android.app.notes.addons"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "setExternalIntent, external addon is not enabled!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.app.notes.tools.BrushActivity"

    invoke-direct {p1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p2
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mInputThumbnailPath:Ljava/lang/String;

    const-string v2, "brush_input_thumbnail_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mInputPaintingDocPath:Ljava/lang/String;

    const-string v2, "brush_input_painting_doc_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mOutputThumbnailPath:Ljava/lang/String;

    const-string v2, "brush_output_thumbnail_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mOutputPaintingDocPath:Ljava/lang/String;

    const-string v2, "brush_output_painting_doc_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mInternalPath:Ljava/lang/String;

    const-string v2, "internal_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mCloseRequested:Z

    const-string/jumbo v2, "tool_force_finish"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mCloseAfterSaveRequested:Z

    const-string/jumbo v2, "tool_force_finish_with_save"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.samsung.android.app.notes.tools.BrushActivity"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCloseCommand(Z)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mCloseRequested:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mCloseAfterSaveRequested:Z

    return-object p0
.end method

.method public setInputPaintingDocPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mInputPaintingDocPath:Ljava/lang/String;

    return-object p0
.end method

.method public setInputThumbnailPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mInputThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public setInternalPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mInternalPath:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputPaintingDocPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mOutputPaintingDocPath:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputThumbnailPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/executor/IBrushExecuteIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/executor/BrushExecuteIntentBuilder;->mOutputThumbnailPath:Ljava/lang/String;

    return-object p0
.end method
