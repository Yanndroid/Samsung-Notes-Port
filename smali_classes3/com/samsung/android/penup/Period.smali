.class public final enum Lcom/samsung/android/penup/Period;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/penup/Period;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/penup/Period;

.field public static final enum ALL:Lcom/samsung/android/penup/Period;

.field public static final enum MONTH:Lcom/samsung/android/penup/Period;

.field public static final enum WEEK:Lcom/samsung/android/penup/Period;


# instance fields
.field private mPeriod:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/penup/Period;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const-string v3, "all"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/penup/Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/penup/Period;->ALL:Lcom/samsung/android/penup/Period;

    new-instance v1, Lcom/samsung/android/penup/Period;

    const-string v3, "MONTH"

    const/4 v4, 0x1

    const-string v5, "monthly"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/penup/Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/penup/Period;->MONTH:Lcom/samsung/android/penup/Period;

    new-instance v3, Lcom/samsung/android/penup/Period;

    const-string v5, "WEEK"

    const/4 v6, 0x2

    const-string/jumbo v7, "weekly"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/penup/Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/penup/Period;->WEEK:Lcom/samsung/android/penup/Period;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/penup/Period;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/penup/Period;->$VALUES:[Lcom/samsung/android/penup/Period;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/penup/Period;->mPeriod:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/penup/Period;
    .locals 1

    const-class v0, Lcom/samsung/android/penup/Period;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/penup/Period;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/penup/Period;
    .locals 1

    sget-object v0, Lcom/samsung/android/penup/Period;->$VALUES:[Lcom/samsung/android/penup/Period;

    invoke-virtual {v0}, [Lcom/samsung/android/penup/Period;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/penup/Period;

    return-object v0
.end method


# virtual methods
.method public getPeriod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/Period;->mPeriod:Ljava/lang/String;

    return-object v0
.end method
