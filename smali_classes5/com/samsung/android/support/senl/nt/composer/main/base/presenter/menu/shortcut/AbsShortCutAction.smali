.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static META_STATE_BIN_BEGIN:I = 0x9


# instance fields
.field public mIsEditType:Z

.field public mKey:J

.field public mKeyCode:I

.field public mMetaState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertKey(Landroid/view/KeyEvent;)J
    .locals 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->createMetaState(ZZZ)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->META_STATE_BIN_BEGIN:I

    shl-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    add-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static createMetaState(ZZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x1000

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    or-int/2addr p0, v0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :cond_1
    or-int/2addr p0, v0

    or-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public doAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doAction(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->doAction()Z

    move-result p1

    return p1
.end method

.method public getKey()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mKey:J

    return-wide v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mKeyCode:I

    return v0
.end method

.method public isBLEEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 v0, 0x2000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCtrl()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mIsEditType:Z

    return v0
.end method

.method public isShift()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mMetaState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setKeyCode(IZZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZZ)V

    return-void
.end method

.method public setKeyCode(IZZZZ)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mKeyCode:I

    invoke-static {p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->createMetaState(ZZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mMetaState:I

    sget p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->META_STATE_BIN_BEGIN:I

    shl-int/2addr p1, p2

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mKeyCode:I

    add-int/2addr p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mKey:J

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->mIsEditType:Z

    return-void
.end method
