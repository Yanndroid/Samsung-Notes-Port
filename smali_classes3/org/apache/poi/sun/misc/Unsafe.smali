.class public final Lorg/apache/poi/sun/misc/Unsafe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final THE_ONE:Lorg/apache/poi/sun/misc/Unsafe;

.field private static final theUnsafe:Lorg/apache/poi/sun/misc/Unsafe;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/misc/Unsafe;

    invoke-direct {v0}, Lorg/apache/poi/sun/misc/Unsafe;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/misc/Unsafe;->THE_ONE:Lorg/apache/poi/sun/misc/Unsafe;

    sput-object v0, Lorg/apache/poi/sun/misc/Unsafe;->theUnsafe:Lorg/apache/poi/sun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native arrayBaseOffset0(Ljava/lang/Class;)I
.end method

.method private static native arrayIndexScale0(Ljava/lang/Class;)I
.end method

.method public static getUnsafe()Lorg/apache/poi/sun/misc/Unsafe;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/misc/Unsafe;->theUnsafe:Lorg/apache/poi/sun/misc/Unsafe;

    return-object v0
.end method

.method private static native objectFieldOffset0(Ljava/lang/reflect/Field;)J
.end method


# virtual methods
.method public native allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/sun/misc/Unsafe;->arrayBaseOffset0(Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "valid for array classes only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/sun/misc/Unsafe;->arrayIndexScale0(Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "valid for array classes only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native compareAndSwapInt(Ljava/lang/Object;JII)Z
.end method

.method public native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
.end method

.method public native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native ensureClassInitialized(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public native getInt(Ljava/lang/Object;J)I
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
.end method

.method public native getLong(Ljava/lang/Object;J)J
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/sun/misc/Unsafe;->objectFieldOffset0(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "valid for instance fields only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native putInt(Ljava/lang/Object;JI)V
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
.end method
