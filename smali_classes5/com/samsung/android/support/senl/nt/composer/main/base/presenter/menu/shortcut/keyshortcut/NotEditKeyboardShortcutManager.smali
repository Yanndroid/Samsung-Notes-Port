.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/NotEditKeyboardShortcutManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/KeyboardShortcutManager;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/KeyboardShortcutManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyboardShortcutGroup(Landroid/app/Activity;Z)Landroid/view/KeyboardShortcutGroup;
    .locals 2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/keyshortcut/KeyboardShortcutManager;->initFind(Landroid/app/Activity;Ljava/util/List;)V

    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->app_name:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v0
.end method
