.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

.field private final mIsZoomIn:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShortCutPageZoom"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;Z)V
    .locals 12

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;->mIsZoomIn:Z

    if-eqz p2, :cond_0

    const/16 v1, 0x46

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZZ)V

    goto :goto_0

    :cond_0
    const/16 v7, 0x45

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public doAction(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;->TAG:Ljava/lang/String;

    const-string v0, "doAction# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutPageZoom;->mIsZoomIn:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ZoomIn:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->ZoomOut:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->doAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;)Z

    move-result p1

    return p1
.end method
