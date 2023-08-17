.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutEditMode;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShortCutEditMode"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutEditMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;-><init>()V

    const/16 v0, 0x42

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZ)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutEditMode;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    return-void
.end method


# virtual methods
.method public doAction()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutEditMode;->mActionManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;->EditMode:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutEditMode;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager;->doAction(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/ActionManager$ActionType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
