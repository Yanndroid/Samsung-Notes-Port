.class public Lcom/samsung/android/sdk/smp/SmpException;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/SmpException$DBException;,
        Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;,
        Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmpException"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpException;->TAG:Ljava/lang/String;

    return-object v0
.end method
