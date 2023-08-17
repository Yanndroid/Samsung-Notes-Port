.class public Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aConsts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_LOCK:Ljava/lang/Object;

.field public static final MDAT:Ljava/lang/String; = "mdat"

.field public static final MOOV:Ljava/lang/String; = "moov"

.field public static final NAME_PLUS_LENGTH:I = 0x8

.field public static final SAUT:Ljava/lang/String; = "saut"

.field public static final SMALL_SEG:I = 0x4

.field public static final SMTA:Ljava/lang/String; = "smta"

.field public static final STTD:Ljava/lang/String; = "sttd"

.field public static final UDTA:Ljava/lang/String; = "udta"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/stt/base/filedata/M4aConsts;->FILE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
