.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker$CliTelemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CliTelemInfo"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "cliteleminfo."

.field public static final RT_AGE:Ljava/lang/String; = "cliteleminfo.rt_age"

.field public static final SERVER_ERROR:Ljava/lang/String; = "cliteleminfo.server_error"

.field public static final SERVER_SUBERROR:Ljava/lang/String; = "cliteleminfo.server_suberror"

.field public static final SPE_RING:Ljava/lang/String; = "cliteleminfo.spe_ring"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
