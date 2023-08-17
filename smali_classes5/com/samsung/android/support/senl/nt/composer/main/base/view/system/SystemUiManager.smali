.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$EmptyStatusBar;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$StatusBar;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mStatusBar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemUiManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$StatusBar;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$StatusBar;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$EmptyStatusBar;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$EmptyStatusBar;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;->mStatusBar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getStatusBar()Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;->mStatusBar:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;

    return-object v0
.end method
