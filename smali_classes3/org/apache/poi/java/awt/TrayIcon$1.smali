.class final Lorg/apache/poi/java/awt/TrayIcon$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$TrayIconAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TrayIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotify(Lorg/apache/poi/java/awt/TrayIcon;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TrayIcon;->addNotify()V

    return-void
.end method

.method public removeNotify(Lorg/apache/poi/java/awt/TrayIcon;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/TrayIcon;->removeNotify()V

    return-void
.end method
