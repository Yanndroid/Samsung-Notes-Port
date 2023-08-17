.class public interface abstract Lcom/samsung/android/app/sdk/deepsky/search/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/search/Logger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u00e6\u0080\u0001\u0018\u0000 \r2\u00020\u0001:\u0001\rJ;\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000b\"\u00020\u0001H&\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/search/Logger;",
        "",
        "log",
        "",
        "priority",
        "",
        "message",
        "",
        "t",
        "",
        "args",
        "",
        "(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V",
        "Companion",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/search/Logger$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final WARN:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/search/Logger$Companion;->$$INSTANCE:Lcom/samsung/android/app/sdk/deepsky/search/Logger$Companion;

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/search/Logger;->Companion:Lcom/samsung/android/app/sdk/deepsky/search/Logger$Companion;

    return-void
.end method


# virtual methods
.method public varargs abstract log(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
