.class public final Lcom/samsung/android/app/sdk/deepsky/donation/schema/ErrorCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/donation/schema/ErrorCodes;",
        "",
        "()V",
        "INFONOTDONATED",
        "",
        "SUCCESS",
        "WRONGTHREAD",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INFONOTDONATED:I = 0x2

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/ErrorCodes;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUCCESS:I = 0x0

.field public static final WRONGTHREAD:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/ErrorCodes;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/donation/schema/ErrorCodes;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/ErrorCodes;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/ErrorCodes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
