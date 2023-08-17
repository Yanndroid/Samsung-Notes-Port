.class public Lcom/samsung/android/support/senl/nt/base/common/access/coedit/CoeditAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static COEDIT_SERVICE_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CoeditAccessHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoeditServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/coedit/CoeditAccessHandler;->COEDIT_SERVICE_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static setCoeditServiceClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/coedit/CoeditAccessHandler;->COEDIT_SERVICE_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/coedit/CoeditAccessHandler;->COEDIT_SERVICE_CLASS:Ljava/lang/Class;

    :cond_0
    return-void
.end method
