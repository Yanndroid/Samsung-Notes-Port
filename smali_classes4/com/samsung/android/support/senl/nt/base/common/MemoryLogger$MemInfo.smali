.class abstract Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$MemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MemInfo"
.end annotation


# static fields
.field public static final ACTIVITIES:Ljava/lang/String; = "Activities:"

.field public static final MB_UNIT:F = 1024.0f

.field public static final PSS:Ljava/lang/String; = "TOTAL PSS:"

.field public static final mTargets:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "Java Heap:"

    const-string v1, "Native Heap:"

    const-string v2, "Code:"

    const-string v3, "Stack:"

    const-string v4, "Graphics:"

    const-string v5, "Private Other:"

    const-string v6, "System:"

    const-string v7, "Unknown:"

    const-string v8, "TOTAL PSS:"

    const-string v9, "Activities:"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$MemInfo;->mTargets:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$MemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract print()V
.end method
