.class public abstract Lorg/conscrypt/BufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNPOOLED:Lorg/conscrypt/BufferAllocator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/conscrypt/BufferAllocator$1;

    invoke-direct {v0}, Lorg/conscrypt/BufferAllocator$1;-><init>()V

    sput-object v0, Lorg/conscrypt/BufferAllocator;->UNPOOLED:Lorg/conscrypt/BufferAllocator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unpooled()Lorg/conscrypt/BufferAllocator;
    .locals 1

    sget-object v0, Lorg/conscrypt/BufferAllocator;->UNPOOLED:Lorg/conscrypt/BufferAllocator;

    return-object v0
.end method


# virtual methods
.method public abstract allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;
.end method
