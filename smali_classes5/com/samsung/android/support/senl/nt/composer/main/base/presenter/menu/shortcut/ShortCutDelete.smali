.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContextMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShortCutDelete"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;-><init>()V

    const/16 v0, 0x70

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZ)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;->mContextMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;

    return-void
.end method


# virtual methods
.method public doAction()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;->TAG:Ljava/lang/String;

    const-string v1, "doAction# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;->mContextMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutDelete;->mContextMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuDelete;->executeMenu()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
