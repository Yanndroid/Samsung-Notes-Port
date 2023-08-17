.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HYPERLINK_TYPE_ADDRESS:I = 0x5

.field public static final HYPERLINK_TYPE_DATETIME:I = 0x6

.field public static final HYPERLINK_TYPE_EMAIL:I = 0x1

.field public static final HYPERLINK_TYPE_FORMULA:I = 0x7

.field public static final HYPERLINK_TYPE_NONE:I = 0x0

.field public static final HYPERLINK_TYPE_PHONE:I = 0x2

.field public static final HYPERLINK_TYPE_URL:I = 0x3


# instance fields
.field public end:I

.field public start:I

.field public type:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->type:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->type:I

    return v0
.end method
