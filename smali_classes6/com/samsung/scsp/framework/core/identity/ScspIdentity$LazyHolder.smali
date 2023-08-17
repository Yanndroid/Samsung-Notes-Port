.class Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/identity/ScspIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final identityImpl:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->identityImpl:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/scsp/framework/core/identity/IdentityImpl;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/ScspIdentity$LazyHolder;->identityImpl:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    return-object v0
.end method
