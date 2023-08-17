.class Lorg/apache/poi/sun/awt/AppContext$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sun/awt/AppContext$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lorg/apache/poi/sun/awt/AppContext$4;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/AppContext$4;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/AppContext$4$1;->this$1:Lorg/apache/poi/sun/awt/AppContext$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/AppContext$4$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 5

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/SystemTray;->getSystemTray()Lorg/apache/poi/java/awt/SystemTray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/SystemTray;->getTrayIcons()[Lorg/apache/poi/java/awt/TrayIcon;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/apache/poi/java/awt/SystemTray;->remove(Lorg/apache/poi/java/awt/TrayIcon;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
