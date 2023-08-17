.class Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/KeepAliveEnforcer$Ticker;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveEnforcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemTicker"
.end annotation


# static fields
.field public static final INSTANCE:Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;

    invoke-direct {v0}, Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;-><init>()V

    sput-object v0, Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;->INSTANCE:Lio/grpc/internal/KeepAliveEnforcer$SystemTicker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
