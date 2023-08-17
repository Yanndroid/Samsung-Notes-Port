.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichTextChangedInfo"
.end annotation


# static fields
.field public static final CHANGED_OBJECT_SPAN:I = 0x4

.field public static final CHANGED_PARAGRAPH:I = 0x3

.field public static final CHANGED_SPAN:I = 0x2

.field public static final CHANGED_TEXT:I = 0x1

.field public static final CHANGED_UNDEFINED:I


# instance fields
.field public annotationProperty:Ljava/lang/String;

.field public annotationType:Ljava/lang/String;

.field public before:I

.field public changedStr:Ljava/lang/String;

.field public changed_type:I

.field public count:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->changed_type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->start:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->before:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->count:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->changedStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->annotationType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->annotationProperty:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public set(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->changed_type:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->start:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->before:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->count:I

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->annotationType:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$RichTextEventListener$RichTextChangedInfo;->annotationProperty:Ljava/lang/String;

    return-void
.end method
