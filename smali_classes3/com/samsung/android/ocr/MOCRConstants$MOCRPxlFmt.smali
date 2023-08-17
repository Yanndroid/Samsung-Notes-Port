.class public final enum Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/MOCRConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MOCRPxlFmt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

.field public static final enum ARGB8888:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

.field public static final enum NV21:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

.field public static final enum RGB:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

.field public static final enum RGBA8888:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    const-string v1, "ARGB8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->ARGB8888:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    new-instance v1, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    const-string v3, "NV21"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->NV21:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    new-instance v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    const-string v5, "RGBA8888"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->RGBA8888:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    new-instance v5, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    const-string v7, "RGB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->RGB:Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->$VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;
    .locals 1

    const-class v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;
    .locals 1

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->$VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    invoke-virtual {v0}, [Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->value:I

    return v0
.end method
