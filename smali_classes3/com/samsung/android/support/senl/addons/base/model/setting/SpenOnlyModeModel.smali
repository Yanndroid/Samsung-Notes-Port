.class public Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;
.super Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;
.implements Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 \u001f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001fB\u0011\u0008\u0000\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\nH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0008\u0010\u0019\u001a\u00020\u000eH\u0002J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\nJ\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/mode/ISpenOnlyMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;",
        "handler",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V",
        "mFoldStateListener",
        "Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;",
        "mIsSpenActivated",
        "",
        "mIsSpenOnlyMode",
        "mSpenOnlyModeHandler",
        "close",
        "",
        "getSpenOnlyMode",
        "initFoldedDevice",
        "logSpenInformations",
        "caller",
        "",
        "onLoadFromInstanceState",
        "inState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "releaseFoldDevice",
        "setSpenActivated",
        "isActivated",
        "setSpenOnlyMode",
        "enable",
        "setSpenOnlyModeHandler",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsSpenActivated:Z

.field private mIsSpenOnlyMode:Z

.field private mSpenOnlyModeHandler:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$Companion;

    const-string v0, "SpenOnlyModeModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->setSpenOnlyModeHandler(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final initFoldedDevice()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$initFoldedDevice$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$initFoldedDevice$1;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->registerFoldStateListener(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;)V

    return-void
.end method

.method private final logSpenInformations(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : Spen Activated / OnlyMode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenActivated:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenOnlyMode:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final releaseFoldDevice()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->unregisterFoldStateListener(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->releaseFoldDevice()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mSpenOnlyModeHandler:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;

    return-void
.end method

.method public getSpenOnlyMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mSpenOnlyModeHandler:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;->isSPenOnlyMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenOnlyMode:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenOnlyMode:Z

    const/16 v0, 0x191

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    const-string v0, "getSpenOnlyMode"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->logSpenInformations(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenActivated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenOnlyMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLoadFromInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setSpenActivated(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenActivated:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenActivated:Z

    const/16 p1, 0x191

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    const-string/jumbo p1, "setSpenActivated"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->logSpenInformations(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSpenOnlyMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mSpenOnlyModeHandler:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;->isSPenOnlyMode()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mSpenOnlyModeHandler:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;->setSPenOnlyMode(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenOnlyMode:Z

    const-string/jumbo p1, "setSpenOnlyMode"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->logSpenInformations(Ljava/lang/String;)V

    const/16 p1, 0x191

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setSpenOnlyModeHandler(Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mSpenOnlyModeHandler:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSpenActivated()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->mIsSpenActivated:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->initFoldedDevice()V

    const-string/jumbo p1, "setSpenOnlyModeHandler"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->logSpenInformations(Ljava/lang/String;)V

    return-void
.end method
