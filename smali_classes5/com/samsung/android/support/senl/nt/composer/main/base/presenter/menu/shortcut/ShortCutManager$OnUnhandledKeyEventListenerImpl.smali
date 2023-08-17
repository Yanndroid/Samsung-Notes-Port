.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnUnhandledKeyEventListenerImpl"
.end annotation


# instance fields
.field public mShortCutManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;->mShortCutManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;->mShortCutManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;

    return-void
.end method

.method public setShortCutManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager$OnUnhandledKeyEventListenerImpl;->mShortCutManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutManager;

    return-void
.end method
