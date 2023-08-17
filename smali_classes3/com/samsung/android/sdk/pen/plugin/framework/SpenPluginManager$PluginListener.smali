.class public Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native native_Installed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_Uninstalled(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;->native_Installed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUninstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;->native_Uninstalled(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
