.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFoldListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;

.field private mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FoldModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->TAG:Ljava/lang/String;

    const-string v1, "FoldModel#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->mFoldListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->registerFoldStateListener(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->mFoldListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->unregisterFoldStateListener(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->mFoldStateListener:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;

    :cond_0
    return-void
.end method
