.class public Lorg/apache/poi/java/awt/Desktop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Desktop$Action;
    }
.end annotation


# instance fields
.field private peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/Toolkit;->createDesktopPeer(Lorg/apache/poi/java/awt/Desktop;)Lorg/apache/poi/java/awt/peer/DesktopPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    return-void
.end method

.method private checkAWTPermission()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/AWTPermission;

    const-string/jumbo v2, "showWindowWithoutWarningBanner"

    invoke-direct {v1, v2}, Lorg/apache/poi/java/awt/AWTPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method private checkActionSupport(Lorg/apache/poi/java/awt/Desktop$Action;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Desktop;->isSupported(Lorg/apache/poi/java/awt/Desktop$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " action is not supported on the current platform!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkExec()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/FilePermission;

    const-string v2, "<<ALL FILES>>"

    const-string v3, "execute"

    invoke-direct {v1, v2, v3}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method private static checkFileValidation(Ljava/io/File;)V
    .locals 3

    const-string v0, "File must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getDesktop()Lorg/apache/poi/java/awt/Desktop;
    .locals 3

    const-class v0, Lorg/apache/poi/java/awt/Desktop;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/Desktop;->isDesktopSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Desktop;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/poi/java/awt/Desktop;

    invoke-direct {v2}, Lorg/apache/poi/java/awt/Desktop;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Desktop API is not supported on the current platform"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isDesktopSupported()Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->isDesktopSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public browse(Ljava/net/URI;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkAWTPermission()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkExec()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sget-object v1, Lorg/apache/poi/java/awt/Desktop$Action;->BROWSE:Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-direct {p0, v1}, Lorg/apache/poi/java/awt/Desktop;->checkActionSupport(Lorg/apache/poi/java/awt/Desktop$Action;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DesktopPeer;->browse(Ljava/net/URI;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lorg/apache/poi/sun/awt/DesktopBrowse;->getInstance()Lorg/apache/poi/sun/awt/DesktopBrowse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/apache/poi/sun/awt/DesktopBrowse;->browse(Ljava/net/URL;)V

    return-void

    :cond_1
    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to convert URI to URL"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public edit(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkAWTPermission()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkExec()V

    sget-object v0, Lorg/apache/poi/java/awt/Desktop$Action;->EDIT:Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Desktop;->checkActionSupport(Lorg/apache/poi/java/awt/Desktop$Action;)V

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    invoke-static {p1}, Lorg/apache/poi/java/awt/Desktop;->checkFileValidation(Ljava/io/File;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DesktopPeer;->edit(Ljava/io/File;)V

    return-void
.end method

.method public isSupported(Lorg/apache/poi/java/awt/Desktop$Action;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DesktopPeer;->isSupported(Lorg/apache/poi/java/awt/Desktop$Action;)Z

    move-result p1

    return p1
.end method

.method public mail()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkAWTPermission()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkExec()V

    sget-object v0, Lorg/apache/poi/java/awt/Desktop$Action;->MAIL:Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Desktop;->checkActionSupport(Lorg/apache/poi/java/awt/Desktop$Action;)V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "mailto:?"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    invoke-interface {v1, v0}, Lorg/apache/poi/java/awt/peer/DesktopPeer;->mail(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public mail(Ljava/net/URI;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkAWTPermission()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkExec()V

    sget-object v0, Lorg/apache/poi/java/awt/Desktop$Action;->MAIL:Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Desktop;->checkActionSupport(Lorg/apache/poi/java/awt/Desktop$Action;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DesktopPeer;->mail(Ljava/net/URI;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI scheme is not \"mailto\""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkAWTPermission()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkExec()V

    sget-object v0, Lorg/apache/poi/java/awt/Desktop$Action;->OPEN:Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Desktop;->checkActionSupport(Lorg/apache/poi/java/awt/Desktop$Action;)V

    invoke-static {p1}, Lorg/apache/poi/java/awt/Desktop;->checkFileValidation(Ljava/io/File;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DesktopPeer;->open(Ljava/io/File;)V

    return-void
.end method

.method public print(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Desktop;->checkExec()V

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPrintJobAccess()V

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/Desktop$Action;->PRINT:Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Desktop;->checkActionSupport(Lorg/apache/poi/java/awt/Desktop$Action;)V

    invoke-static {p1}, Lorg/apache/poi/java/awt/Desktop;->checkFileValidation(Ljava/io/File;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Desktop;->peer:Lorg/apache/poi/java/awt/peer/DesktopPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/DesktopPeer;->print(Ljava/io/File;)V

    return-void
.end method
