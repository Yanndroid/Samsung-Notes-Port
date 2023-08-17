.class public Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDescription:Ljava/lang/String;

.field private mNativeId:I

.field private mPropertyFlag:I

.field private mRoleDescription:Ljava/lang/String;

.field private mStateDescription:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mNativeId:I

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mBound:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBound()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mNativeId:I

    return v0
.end method

.method public getPropertyFlag()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mPropertyFlag:I

    return v0
.end method

.method public getRoleDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mRoleDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStateDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mStateDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public set(ILandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mNativeId:I

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mBound:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public set(ILandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mNativeId:I

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mBound:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mRoleDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mStateDescription:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mText:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mPropertyFlag:I

    return-void
.end method

.method public setBound(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mBound:Landroid/graphics/Rect;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setNativeId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mNativeId:I

    return-void
.end method

.method public setPropertyFlag(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mPropertyFlag:I

    return-void
.end method

.method public setRoleDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mRoleDescription:Ljava/lang/String;

    return-void
.end method

.method public setStateDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mStateDescription:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;->mText:Ljava/lang/String;

    return-void
.end method
