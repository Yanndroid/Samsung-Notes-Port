.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0014J\u0008\u0010\u0013\u001a\u00020\u0010H\u0014J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000bH\u0016J\u0006\u0010\u0017\u001a\u00020\u0007J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0006\u0010\u0019\u001a\u00020\u0007J\u0008\u0010\u001a\u001a\u00020\u0010H\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u001c\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010!\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V",
        "mEnabled",
        "",
        "mFacade",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;",
        "mImageFileSharePath",
        "",
        "mInjector",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;",
        "mIsPenUpLoading",
        "clearModels",
        "",
        "close",
        "closeCallbacks",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "getEnabled",
        "getPenupViewListener",
        "isPenUpLoading",
        "onClosed",
        "onRequestCapturePage",
        "Landroid/graphics/Bitmap;",
        "runSharePenup",
        "context",
        "Landroid/content/Context;",
        "injector",
        "sharePenUp",
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
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.app.notes.shareprovider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_ENABLE:Ljava/lang/String; = "enable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PENUP_LISTENER:Ljava/lang/String; = "penupListener"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mEnabled:Z

.field private mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mImageFileSharePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInjector:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsPenUpLoading:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel$Companion;

    const-string v0, "PenupViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mEnabled:Z

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    :cond_0
    return-void
.end method

.method private final getPenupViewListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;
    .locals 0

    return-object p0
.end method

.method private final onRequestCapturePage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->captureAllPage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final sharePenUp(Landroid/content/Context;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mInjector:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, ""

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;->getSharePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mImageFileSharePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->onRequestCapturePage()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Failed to create bitmap"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mImageFileSharePath:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->TAG:Ljava/lang/String;

    const-string v2, "Exception is occurred at File I/O."

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mImageFileSharePath:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to write file : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mImageFileSharePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.penup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "com.samsung.android.app.notes.shareprovider"

    invoke-static {p1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "from_package"

    const-string v2, "com.samsung.android.app.notes"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mInjector:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mIsPenUpLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mEnabled:Z

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "enable"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->getEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "penupListener"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->getPenupViewListener()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mEnabled:Z

    return v0
.end method

.method public final isPenUpLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mIsPenUpLoading:Z

    return v0
.end method

.method public onClosed()V
    .locals 0

    return-void
.end method

.method public runSharePenup(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->mInjector:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;->sharePenUp(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
