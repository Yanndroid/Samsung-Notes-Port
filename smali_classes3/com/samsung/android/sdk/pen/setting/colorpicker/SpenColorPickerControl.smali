.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorPickerControl"


# instance fields
.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

.field private mHsv:[F

.field private mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;

.field private mOldHsv:[F

.field private mPickerActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

.field private final mPickerColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

.field private mPickerMode:I

.field private final mPickerModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;

.field private mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;


# direct methods
.method public constructor <init>(I[F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerMode:I

    const/4 p1, 0x3

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mOldHsv:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerMode:I

    return p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerMode:I

    return p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mOldHsv:[F

    return-void
.end method

.method public getCurrentColor([F)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    if-eqz v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    aget v1, v1, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "SpenColorPickerControl"

    const-string v1, "getCurrentColor() - array null"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOldColor([F)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mOldHsv:[F

    if-eqz v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mOldHsv:[F

    aget v1, v1, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "SpenColorPickerControl"

    const-string v1, "getOldColor() - array null"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerMode:I

    return v0
.end method

.method public setColor([F[F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mOldHsv:[F

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColor([F[F)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SpenColorPickerControl"

    const-string/jumbo p2, "setColor() invalid state."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setColorPickerActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    return-void
.end method

.method public setColorPickerChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    return-void
.end method

.method public setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;

    return-void
.end method

.method public setCurrentColor([F)V
    .locals 4

    const-string v0, "SpenColorPickerControl"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setCurrentColor([F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mHsv:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p1, v2

    const-string/jumbo v1, "setCurrentColor() - step2 [H,S,V]=[%f,%f,%f]"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_1
    const-string/jumbo p1, "setCurrentColor() invalid state."

    goto :goto_0
.end method

.method public setPickerView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColorListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setModeChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public setRecentColors([FI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setRecentColors([FI)V

    :cond_0
    return-void
.end method

.method public setViewMode(I)V
    .locals 3

    const-string v0, "SpenColorPickerControl"

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerMode:I

    if-ne p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Same mode] current="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerMode:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setMode(I)Z

    :cond_2
    return-void
.end method
