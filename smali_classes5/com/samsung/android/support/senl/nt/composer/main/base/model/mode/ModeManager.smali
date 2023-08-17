.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SoftInputManagerContract;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

.field private mPrevMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

.field private mSubDeleteOnlyMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ModeManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Init:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mPrevMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mSubDeleteOnlyMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    return-void
.end method

.method private isComposerViewMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Search:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    return-object v0
.end method

.method public getMode(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Init:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object p1

    return-object p1
.end method

.method public getPrevMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mPrevMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    return-object v0
.end method

.method public init(ZZZ)V
    .locals 1

    if-eqz p3, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Init:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    :goto_0
    const/4 p2, 0x1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->FORCE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    const-string v0, " init#"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public isComposerViewMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isComposerViewMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    return v0
.end method

.method public isDeleteOnlyMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mSubDeleteOnlyMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->DELETE_ONLY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditModeWithoutReadOnly(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    return v0
.end method

.method public isEditModeWithReadOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditModeWithReadOnly(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    return v0
.end method

.method public isEditModeWithReadOnly(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditModeWithoutReadOnly(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->ReadOnly:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEditModeWithoutReadOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditModeWithoutReadOnly(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    return v0
.end method

.method public isEditModeWithoutReadOnly(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPreModeComposerViewMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mPrevMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isComposerViewMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    return v0
.end method

.method public isSipMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Search:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public restoreMode(Ljava/lang/String;Ljava/lang/String;ZZLcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SoftInputManagerContract;Z)V
    .locals 2

    const-string v0, "restoreMode# "

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Init:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-eq p1, p3, :cond_2

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Search:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->ReadOnly:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne p1, p3, :cond_6

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setPrevMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)V

    goto :goto_3

    :cond_2
    :goto_0
    const/4 p2, 0x0

    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    move p3, v1

    goto :goto_1

    :cond_3
    move p3, p2

    :goto_1
    if-eqz p3, :cond_4

    invoke-interface {p5, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SoftInputManagerContract;->blockToShow(Z)V

    :cond_4
    if-eqz p3, :cond_5

    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->NOT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    goto :goto_2

    :cond_5
    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->DELAY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    :goto_2
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;ZLjava/lang/Object;)V

    if-eqz p3, :cond_6

    invoke-interface {p5, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SoftInputManagerContract;->blockToShow(Z)V

    :cond_6
    :goto_3
    invoke-virtual {p0, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setDeleteOnlyMode(Z)V

    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->DELETE_ONLY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mSubDeleteOnlyMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mSubDeleteOnlyMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mSubDeleteOnlyMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode# request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mPrevMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-virtual {p0, p4}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setPrevMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrevMode# request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mPrevMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->mPrevMode:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    return-void
.end method
