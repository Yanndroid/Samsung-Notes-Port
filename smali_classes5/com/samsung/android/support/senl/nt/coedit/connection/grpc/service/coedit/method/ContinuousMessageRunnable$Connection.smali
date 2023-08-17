.class public final enum Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

.field public static final enum Connected:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

.field public static final enum Connecting:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

.field public static final enum Disconnected:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

.field public static final enum Error:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    const-string v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Disconnected:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    const-string v3, "Connecting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Connecting:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    const-string v5, "Connected"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Connected:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    new-instance v5, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    const-string v7, "Error"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->Error:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->$VALUES:[Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->$VALUES:[Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$Connection;

    return-object v0
.end method
