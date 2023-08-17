.class public Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aVector:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;",
            ">;"
        }
    .end annotation
.end field

.field public static deferring:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateProfiles()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    sget-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    sget-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;

    :try_start_0
    invoke-interface {v1}, Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;->activate()V
    :try_end_0
    .catch Lorg/apache/poi/java/awt/color/ProfileDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    return-void
.end method

.method public static registerDeferral(Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;)V
    .locals 2

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1}, Ljava/util/Vector;-><init>(II)V

    sput-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    :cond_1
    sget-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static unregisterDeferral(Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;)V
    .locals 1

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->aVector:Ljava/util/Vector;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method
