.class Lorg/conscrypt/SSLNullSession$DefaultHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/SSLNullSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHolder"
.end annotation


# static fields
.field public static final NULL_SESSION:Lorg/conscrypt/SSLNullSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/conscrypt/SSLNullSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/SSLNullSession;-><init>(Lorg/conscrypt/SSLNullSession$1;)V

    sput-object v0, Lorg/conscrypt/SSLNullSession$DefaultHolder;->NULL_SESSION:Lorg/conscrypt/SSLNullSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
