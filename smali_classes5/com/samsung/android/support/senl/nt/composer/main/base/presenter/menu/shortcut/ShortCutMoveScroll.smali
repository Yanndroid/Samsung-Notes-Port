.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

.field private final mIsUpOrLeft:Z

.field private final mIsVertical:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShortCutMoveScroll"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;ZZ)V
    .locals 12

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->mIsVertical:Z

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->mIsUpOrLeft:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v7, 0x14

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const/16 v1, 0x15

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZZ)V

    goto :goto_2

    :cond_2
    const/16 v7, 0x16

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZZ)V

    :goto_2
    return-void
.end method


# virtual methods
.method public doAction(Landroid/view/KeyEvent;)Z
    .locals 3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->TAG:Ljava/lang/String;

    const-string v0, "doAction# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->mIsVertical:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->MoveVerticalScroll:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->MoveHorizontalScroll:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutMoveScroll;->mIsUpOrLeft:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->doAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
