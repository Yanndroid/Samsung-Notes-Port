.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StateClosing"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    return-void
.end method


# virtual methods
.method public onResumePenStartAction(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;->TAG:Ljava/lang/String;

    const-string v1, "onResumePenStartAction#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateRestart;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateRestart;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->reserveRestart()V

    return-void
.end method
