.class public Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;
.super Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;
.source "SourceFile"


# static fields
.field public static final CHANGED_ALL:I = 0x5

.field public static final CHANGED_BOUND:I = 0x4

.field public static final CHANGED_MAX:I = 0x7

.field public static final CHANGED_OBJECT_SPAN:I = 0x6

.field public static final CHANGED_PARA:I = 0x3

.field public static final CHANGED_SPAN:I = 0x2

.field public static final CHANGED_TEXT:I = 0x1

.field public static final CHANGED_UNDEFIND:I


# instance fields
.field public before:I

.field public count:I

.field public index:I

.field public textChangedType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->textChangedType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->index:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->before:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedTextInfo;->count:I

    return-void
.end method
