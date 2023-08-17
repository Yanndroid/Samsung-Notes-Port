.class final Lorg/apache/poi/sun/awt/AppContext$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/misc/JavaAWTAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AppContext;
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

.method private hasRootThreadGroup(Lorg/apache/poi/sun/awt/AppContext;)Z
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/awt/AppContext$6$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/sun/awt/AppContext$6$1;-><init>(Lorg/apache/poi/sun/awt/AppContext$6;Lorg/apache/poi/sun/awt/AppContext;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAppletContext()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->access$900()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->access$100()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    if-eq v2, v0, :cond_4

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->access$100()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lorg/apache/poi/sun/awt/AppContext$6;->hasRootThreadGroup(Lorg/apache/poi/sun/awt/AppContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    return-object v1
.end method
