.class public final Lio/netty/util/Signal;
.super Ljava/lang/Error;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/Constant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Signal$SignalConstant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Error;",
        "Lio/netty/util/Constant<",
        "Lio/netty/util/Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final pool:Lio/netty/util/ConstantPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ConstantPool<",
            "Lio/netty/util/Signal;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x311aa53385c8549L


# instance fields
.field private final constant:Lio/netty/util/Signal$SignalConstant;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/Signal$1;

    invoke-direct {v0}, Lio/netty/util/Signal$1;-><init>()V

    sput-object v0, Lio/netty/util/Signal;->pool:Lio/netty/util/ConstantPool;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    new-instance v0, Lio/netty/util/Signal$SignalConstant;

    invoke-direct {v0, p1, p2}, Lio/netty/util/Signal$SignalConstant;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lio/netty/util/Signal$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/util/Signal;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Signal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/Signal;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/Signal;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object p0

    check-cast p0, Lio/netty/util/Signal;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/util/Signal;
    .locals 1

    sget-object v0, Lio/netty/util/Signal;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object p0

    check-cast p0, Lio/netty/util/Signal;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/netty/util/Signal;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    iget-object p1, p1, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractConstant;->compareTo(Lio/netty/util/AbstractConstant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/util/Signal;

    invoke-virtual {p0, p1}, Lio/netty/util/Signal;->compareTo(Lio/netty/util/Signal;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public expect(Lio/netty/util/Signal;)V
    .locals 3

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    iget-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    invoke-virtual {v0}, Lio/netty/util/AbstractConstant;->id()I

    move-result v0

    return v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    invoke-virtual {v0}, Lio/netty/util/AbstractConstant;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/Signal;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
