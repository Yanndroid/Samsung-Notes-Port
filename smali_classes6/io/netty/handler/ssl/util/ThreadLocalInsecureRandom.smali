.class final Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Ljava/security/SecureRandom;

.field private static final serialVersionUID:J = -0x71ede8812866b16fL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;

    invoke-direct {v0}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->INSTANCE:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    return-void
.end method

.method public static current()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->INSTANCE:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private static random()Ljava/util/Random;
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1

    new-array p1, p1, [B

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-object p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "insecure"

    return-object v0
.end method

.method public nextBoolean()Z
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-void
.end method

.method public nextDouble()D
    .locals 2

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public nextGaussian()D
    .locals 2

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public nextLong()J
    .locals 2

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 0

    return-void
.end method

.method public setSeed([B)V
    .locals 0

    return-void
.end method
